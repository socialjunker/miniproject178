package com.miniproject.training.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miniproject.training.dao.VersionDao;
import com.miniproject.training.dao.VersionDetailDao;
import com.miniproject.training.model.Version;
import com.miniproject.training.model.VersionDetail;

@Service
@Transactional
public class VersionService {

	@Autowired
	VersionDao versionDao;
	
	@Autowired
	VersionDetailDao versionDetailDao;

	public List<Version> getAllVersions() {
		// TODO Auto-generated method stub
		List<Version> versions = versionDao.getAllVersions();
//		for(Version ver: versions) {
//			List<VersionDetail> versionDetails = versionDetailDao.getVersionDetailByVersion(ver);
//			ver.setVersionDetail(versionDetails);
//		}
		return versions;
	}

	public void saving(Version version) {
		// TODO Auto-generated method stub
		List<VersionDetail> versionDetails = version.getVersionDetail();
		versionDao.save(version);
		
		//java foreach
		for(VersionDetail versionDetail: versionDetails) {
			versionDetail.setVersion(version);
			versionDetailDao.save(versionDetail);
		}
		
	}

	public Version getVersionById(Long id) {
		// TODO Auto-generated method stub
		Version version = versionDao.getVersionById(id);
		return version;
	}

	public Version getLastVersion() {
		// TODO Auto-generated method stub
		Version version = versionDao.getLastVersion();
		Version v1 = new Version();
		v1.setId(version.getId());
		List<VersionDetail> versionDetails = versionDetailDao.getVersionDetailByVersion(v1);
		version.setVersionDetail(versionDetails);
		return version;
	}
	
}