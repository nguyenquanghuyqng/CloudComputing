package CloudComputing.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import CloudComputing.DAO.ContentTypesRespository;
import CloudComputing.Model.ContentTypes;

@Service
@Transactional
public class ContentService {

	private final ContentTypesRespository contentTypesRespository;

	public ContentService(ContentTypesRespository contentTypesRespository) {
		this.contentTypesRespository = contentTypesRespository;
	}

	// Lấy dữ liệu ra
	public List<ContentTypes> findAllContentType() {
		List<ContentTypes> contenttype = new ArrayList<>();
		for (ContentTypes content : contentTypesRespository.findAll()) {
			contenttype.add(content);
		}
		return contenttype;
	}

}
