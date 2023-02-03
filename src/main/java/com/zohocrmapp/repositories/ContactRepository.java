package com.zohocrmapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zohocrmapp.entities.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {

}
