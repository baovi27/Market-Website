package com.ps22978.asm.Bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReportCategory  implements Serializable  {
	@Id
	Serializable group;
	long sum;
	long count;
}
