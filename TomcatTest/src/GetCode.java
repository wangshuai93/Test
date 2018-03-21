import java.util.ArrayList;
import java.util.List;

import javax.faces.model.SelectItem;


public class GetCode {
	@SuppressWarnings("unchecked")
	public List<String> getLs(){
		List bb = new ArrayList();
		bb.add(new SelectItem("01","男")); 
		bb.add(new SelectItem("02","女"));
		 return bb;
}
}
