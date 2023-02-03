package com.zohocrmapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zohocrmapp.entities.Lead;

public interface LeadRepository extends JpaRepository<Lead, Long> {

}
