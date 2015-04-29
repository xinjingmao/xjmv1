package xjm.controller.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
/**
 * 快滴拿证手机端接口
 * @author Administrator
 *
 */
@Controller
public class APPController {
	
	
	
	@RequestMapping("/about")
	@ResponseBody
	public ModelAndView about() {
		return new ModelAndView("/app/about");
	}
}
