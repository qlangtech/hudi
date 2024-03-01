package org.apache.hudi.common.fs;

import org.apache.hadoop.fs.FileSystem;

/**
 * @author: 百岁（baisui@qlangtech.com）
 * @create: 2022-03-02 10:46
 **/
public interface IExtraHadoopFileSystemGetter {
    String HUDI_FILESYSTEM_NAME = "hudi_hdfs";

    FileSystem getHadoopFileSystem(String path);
}
