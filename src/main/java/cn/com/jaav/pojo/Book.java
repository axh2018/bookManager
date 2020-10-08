package cn.com.jaav.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book
{
    private int bookID;
    private String bookName;
    private int bookCounts;
    private String detail;
}
