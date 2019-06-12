package com.summer.ssm.dao;

import com.summer.ssm.domain.Member;

public interface MemberDao {

    Member findById(Integer id) throws Exception;
}
