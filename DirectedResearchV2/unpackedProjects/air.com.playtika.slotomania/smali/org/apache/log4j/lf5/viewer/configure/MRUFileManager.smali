.class public Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;
.super Ljava/lang/Object;
.source "MRUFileManager.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "mru_file_manager"

.field private static final DEFAULT_MAX_SIZE:I = 0x3


# instance fields
.field private _maxSize:I

.field private _mruFileList:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_maxSize:I

    .line 56
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->load()V

    .line 57
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->setMaxSize(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_maxSize:I

    .line 61
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->load()V

    .line 62
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->setMaxSize(I)V

    .line 63
    return-void
.end method

.method public static createConfigurationDirectory()V
    .locals 6

    .prologue
    .line 175
    const-string v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "home":Ljava/lang/String;
    const-string v4, "file.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "sep":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "lf5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getFile(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFilename()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    const-string v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "home":Ljava/lang/String;
    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "sep":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "lf5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "mru_file_manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getFile(I)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Ljava/io/File;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    .line 115
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/net/URL;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 201
    .local v0, "reader":Ljava/io/BufferedInputStream;
    return-object v0
.end method

.method protected getInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getMRUFileList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 140
    const/4 v3, 0x0

    .line 156
    :goto_0
    return-object v3

    .line 143
    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 145
    .local v2, "ss":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 146
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getFile(I)Ljava/lang/Object;

    move-result-object v1

    .line 147
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Ljava/io/File;

    if-eqz v3, :cond_1

    .line 148
    check-cast v1, Ljava/io/File;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 145
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_2

    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    move-object v3, v2

    .line 156
    goto :goto_0
.end method

.method protected load()V
    .locals 6

    .prologue
    .line 233
    invoke-static {}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->createConfigurationDirectory()V

    .line 234
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 239
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    iput-object v5, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    .line 240
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 243
    iget-object v5, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 244
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 246
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Ljava/io/File;

    if-nez v5, :cond_0

    instance-of v5, v3, Ljava/net/URL;

    if-nez v5, :cond_0

    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 254
    :cond_2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    goto :goto_1
.end method

.method public moveToTop(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 166
    return-void
.end method

.method public save()V
    .locals 4

    .prologue
    .line 72
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 79
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public set(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->setMRU(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public set(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->setMRU(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method protected setMRU(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 218
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 220
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 222
    iget v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_maxSize:I

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->setMaxSize(I)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->moveToTop(I)V

    goto :goto_0
.end method

.method protected setMaxSize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .prologue
    .line 270
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    :cond_0
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_maxSize:I

    .line 277
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/configure/MRUFileManager;->_mruFileList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
