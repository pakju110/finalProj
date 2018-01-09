package hta.manager;

import java.io.FileOutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import hta.controll.SubControll;
import hta.model.ShopData;
import hta.shop.model.ShopRepository;
import hta.shop.model.ShopVo;


@Service
public class Cf implements SubControll {

   @Resource
   ShopData data;
   
   @Resource
   CfRepository dao;
   
   @Resource
   ShopRepository sdao;
   
   
   CfVo vo;
   
   
   @Override
   public void execute() {
      
      // TODO Auto-generated method stub
      
      System.out.println("center 진입성공:"+data);
      vo = (CfVo)data.getDd();
      
      
      
      switch(data.getService())
      {
      case "list":
         list();
         break;
      /*case "wlist":
         wlist();
         break;*/
      case "nowcflist":
         nowcflist();
         break;
      case "endcflist":
         endcflist();
         break;
         case "view":
            view();
            break;
         case "modify":
            modify();
            break;
         case "modifyForm":
            modifyForm();
            break;
         case "deleteReg":
            delete();
            break;
         case "reg":
            reg();
            break;
         case "restreg":
            restreg();
            break;
         case "grademodify":
            grademodify();
            break;
         case "cfapproval":
            cfapproval();
            break;
         case "cfreg":
            cfreg();
            break;
         case "inpay":
            inpay();
            break;
         case "inpaysch":
            inpaysch();
      
         
      }
      
   }

   void delete() {
      data.setRedirect(true);
      
      if(dao.idPwChk(vo)!=null)
      {
         //fileupload(vo, request);
         data.setDd(dao.delete(vo));
      }
      data.setPath("redirect:list");
      data.setDd(dao.detail(vo));
      
   }
   
   
   void deleteForm() {
      data.setDd(vo.getRest_id());
   }
   
   void reg() {
   
      System.out.println("reg진입확인"+vo);
      
      //fileupload(vo, data.getRequest());
      dao.insert(vo);
      
      data.setRedirect(true);
      data.setPath("redirect:view?Rest_id="+vo.getRest_id());
   }
   

   void restreg() {
   
      System.out.println("restreg진입확인"+vo);
      
      //fileupload(vo, data.getRequest());
      dao.insert2(vo);
      
      data.setRedirect(true);
      data.setPath("redirect:view?Rest_id="+vo.getRest_id());
   }
   
   
   
   void view() {
      
      
      ShopVo svo= new ShopVo();
      svo.setRest_id(data.getRequest().getParameter("rest_id"));
   
      System.out.println("\n\n\n\ntest"+svo+"\n\n\n\ntest");
      
      System.out.println("\n\n\n\ntest"+sdao.detail(svo)+"\n\n\n\ntest");
      //data.setCfdetailimg(data.getRequest().getParameter("cf_sysimg"));
      //System.out.println("cf이미지!!!"+data.getRequest().getParameter("cf_sysimg"));
      data.setCfdetailimg(dao.detail(vo));
      data.setDd(sdao.detail(svo));
      
   }
   
   
   void  modify() {
      data.setRedirect(true);
      
      if(dao.idPwChk(vo)!=null)
      {
         //fileupload(vo, request);
         data.setDd(dao.modify(vo));
      }
      data.setPath("redirect:view?Rest_id="+vo.getRest_id());
      data.setDd(dao.detail(vo));
   }
   
   void modifyForm() {
      data.setDd(dao.detail(vo));
   }
   
   
   void grademodify() {
      data.setRedirect(true);
      data.setPath("redirect:list");
      data.setDd(dao.grademodify(vo));
   }

   
   void  list() {

      data.setDd(dao.list());
   }
   /*void  wlist() {

      data.setDd(dao.wlist());
   }*/
   
   void  nowcflist() {

      data.setDd(dao.nowcflist());
   }
   
   
   void  endcflist() {

      data.setDd(dao.endcflist());
   }
   
   
   void cfapproval() {
      data.setDd(dao.cfapproval(vo));
      
      data.setRedirect(true);
      data.setPath("redirect:list");
      
      data.setDd(dao.list());
      
   }
   void fileupload(CfVo vo, HttpServletRequest request)
   {
      
      try {
         vo.setCf_oriimg(vo.getFf().getOriginalFilename());
         String outPath = request.getRealPath("/resources/cf");
         outPath = "C:\\Users\\pakju\\git\\finalProj\\finalProj\\src\\main\\webapp\\resources\\img";
         outPath += "/"+vo.getCf_oriimg();
         
         
         vo.setCf_oriimg(vo.getCf_oriimg());
         vo.setCf_sysimg(vo.getCf_oriimg());
         
         FileOutputStream fos = new FileOutputStream(outPath);
         
         fos.write(vo.getFf().getBytes());
         
         fos.close();
         
      } catch (Exception e) {
      
         e.printStackTrace();
      }
      
      
   }
   

   
   ModelAndView  modifySubmit(CfVo vo, HttpServletRequest request) {

      String url = "redirect:modifyForm";
      
      //vo.setUpfile(vo.getFf().getOriginalFilename());
      
      if(dao.modify(vo))
      {
         //fileupload(vo, request);
         url = "redirect:detail";
      }
      ModelAndView mav = new ModelAndView(url);
      
      
      mav.addObject("Rest_id", vo.getRest_id());
      return mav;
   }
   
   
   ModelAndView  deleteForm(@ModelAttribute("vo") CfVo vo) {
      
      ModelAndView mav = new ModelAndView();
      System.out.println("deleteForm:"+vo.getRest_id());
      return mav;
   }
   
   void cfreg() {   
      
      fileupload(vo, data.getRequest());
      dao.insert(vo);
      
      data.setRedirect(true);
      data.setPath("redirect:cf");
   }
   void inpay() {
      data.setDd(dao.inpay());
   }
      
   void inpaysch() {
      String old = vo.getYear1()+"-"+vo.getMonth1()+"-01";
      String prn = vo.getYear2()+"-"+vo.getMonth2()+"-31";
      Date date1,date2;
      try {
         date1 = new SimpleDateFormat("yyyy-MM-dd").parse(old);
         date2 = new SimpleDateFormat("yyyy-MM-dd").parse(prn);
         vo.setTodate(date1);
         vo.setTodate2(date2);
      } catch (ParseException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      System.out.println("인페이 검색"+vo);
      System.out.println("인페이데이터디디"+data.getDd());
      data.setDd(dao.inpaysch(vo));   
   }
}