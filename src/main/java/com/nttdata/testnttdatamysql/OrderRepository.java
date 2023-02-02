package com.nttdata.testnttdatamysql;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {

    Page<Order> findAll(Pageable pageable);
    public Order findByOrderNumber(String orderNumber);
    
}
