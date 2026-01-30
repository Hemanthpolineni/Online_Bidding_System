package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.RepositoryDefinition;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer >{
	@Query("select a from Admin a where username=?1 and password=?2")
	public Admin checkadminlogin(String auname, String apwd);
	
	@Query("update Seller set active=?1 where id=?2")
	@Modifying
	@Transactional
	public int updatestatus(boolean actvie, int edi);
	
	
	
}
