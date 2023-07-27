package com.program.app.infra.member;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.program.app.common.constants.Constants;
import com.program.app.common.util.UtilDateTime;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	
	@Override
	public int selectOneCount(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Member> selectList(MemberVo vo) {
		// TODO Auto-generated method stub
		List<Member> yep = dao.selectList(vo);
		
		return yep;
	}

	@Override
	public Member selectOne(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public Member selectTwo(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selectTwo(vo);
	}
	
	@Override
	public int selectOneCheckId(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selecOneCheckId(vo);
	}

	@Override
	public int update(Member dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Member dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(Member dto) throws Exception {
		// TODO Auto-generated method stub
		
		uploadFiles(dto.getUploadImgProfile(), dto, "infrMemberUploaded", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
    	uploadFiles(dto.getUploadImg(), dto, "infrMemberUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
    	uploadFiles(dto.getUploadFile(), dto, "infrMemberUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());
    	
    	
		return dao.insert(dto);
	}
	
	public static String nowString() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		return localDateTimeString;
	}

	
public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception {
		
		for(int i=0; i<multipartFiles.length; i++) {
    	
			if(!multipartFiles[i].isEmpty()) {
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = UtilDateTime.nowString();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdir();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy();
				dto.setSort(maxNumber + i);
				dto.setPseq(dto.getSeq());

				dao.insertUploaded(dto);
    		}
		}
	}
	


	@Override
	public int uelete(Member dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}
	


	
	
	
	
}