.class public Lorg/apache/log4j/spi/LoggingEvent;
.super Ljava/lang/Object;
.source "LoggingEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final PARAM_ARRAY:[Ljava/lang/Integer;

.field static final TO_LEVEL:Ljava/lang/String; = "toLevel"

.field static final TO_LEVEL_PARAMS:[Ljava/lang/Class;

.field static class$org$apache$log4j$Level:Ljava/lang/Class; = null

.field static final methodCache:Ljava/util/Hashtable;

.field static final serialVersionUID:J = -0xc0d46dc8bf44ac1L

.field private static startTime:J


# instance fields
.field public final categoryName:Ljava/lang/String;

.field public final transient fqnOfCategoryClass:Ljava/lang/String;

.field public transient level:Lorg/apache/log4j/Priority;

.field private locationInfo:Lorg/apache/log4j/spi/LocationInfo;

.field private transient logger:Lorg/apache/log4j/Category;

.field private mdcCopy:Ljava/util/Hashtable;

.field private mdcCopyLookupRequired:Z

.field private transient message:Ljava/lang/Object;

.field private ndc:Ljava/lang/String;

.field private ndcLookupRequired:Z

.field private renderedMessage:Ljava/lang/String;

.field private threadName:Ljava/lang/String;

.field private throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

.field public final timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/log4j/spi/LoggingEvent;->startTime:J

    .line 136
    new-array v0, v2, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/log4j/spi/LoggingEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    .line 138
    new-array v0, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/log4j/spi/LoggingEvent;->TO_LEVEL_PARAMS:[Ljava/lang/Class;

    .line 139
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/log4j/spi/LoggingEvent;->methodCache:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Level;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/spi/ThrowableInformation;Ljava/lang/String;Lorg/apache/log4j/spi/LocationInfo;Ljava/util/Map;)V
    .locals 2
    .param p1, "fqnOfCategoryClass"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/apache/log4j/Category;
    .param p3, "timeStamp"    # J
    .param p5, "level"    # Lorg/apache/log4j/Level;
    .param p6, "message"    # Ljava/lang/Object;
    .param p7, "threadName"    # Ljava/lang/String;
    .param p8, "throwable"    # Lorg/apache/log4j/spi/ThrowableInformation;
    .param p9, "ndc"    # Ljava/lang/String;
    .param p10, "info"    # Lorg/apache/log4j/spi/LocationInfo;
    .param p11, "properties"    # Ljava/util/Map;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 216
    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    .line 218
    if-eqz p2, :cond_2

    .line 219
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    .line 223
    :goto_0
    iput-object p5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 224
    iput-object p6, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    .line 225
    if-eqz p8, :cond_0

    .line 226
    iput-object p8, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 229
    :cond_0
    iput-wide p3, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 230
    iput-object p7, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    .line 231
    iput-boolean v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 232
    iput-object p9, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndc:Ljava/lang/String;

    .line 233
    iput-object p10, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 234
    iput-boolean v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 235
    if-eqz p11, :cond_1

    .line 236
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p11}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 238
    :cond_1
    return-void

    .line 221
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "fqnOfCategoryClass"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/apache/log4j/Category;
    .param p3, "timeStamp"    # J
    .param p5, "level"    # Lorg/apache/log4j/Priority;
    .param p6, "message"    # Ljava/lang/Object;
    .param p7, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 178
    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    .line 180
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    .line 181
    iput-object p5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 182
    iput-object p6, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    .line 183
    if-eqz p7, :cond_0

    .line 184
    new-instance v0, Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-direct {v0, p7}, Lorg/apache/log4j/spi/ThrowableInformation;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 187
    :cond_0
    iput-wide p3, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "fqnOfCategoryClass"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/apache/log4j/Category;
    .param p3, "level"    # Lorg/apache/log4j/Priority;
    .param p4, "message"    # Ljava/lang/Object;
    .param p5, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 153
    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    .line 155
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 157
    iput-object p4, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    .line 158
    if-eqz p5, :cond_0

    .line 159
    new-instance v0, Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-direct {v0, p5}, Lorg/apache/log4j/spi/ThrowableInformation;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 161
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 162
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 484
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStartTime()J
    .locals 2

    .prologue
    .line 375
    sget-wide v0, Lorg/apache/log4j/spi/LoggingEvent;->startTime:J

    return-wide v0
.end method

.method private readLevel(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 417
    .local v4, "p":I
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 418
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 419
    invoke-static {v4}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 440
    .end local v0    # "className":Ljava/lang/String;
    :goto_0
    return-void

    .line 421
    .restart local v0    # "className":Ljava/lang/String;
    :cond_0
    sget-object v5, Lorg/apache/log4j/spi/LoggingEvent;->methodCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 422
    .local v3, "m":Ljava/lang/reflect/Method;
    if-nez v3, :cond_1

    .line 423
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 430
    .local v1, "clazz":Ljava/lang/Class;
    const-string v5, "toLevel"

    sget-object v6, Lorg/apache/log4j/spi/LoggingEvent;->TO_LEVEL_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 431
    sget-object v5, Lorg/apache/log4j/spi/LoggingEvent;->methodCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_1
    sget-object v5, Lorg/apache/log4j/spi/LoggingEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    .line 434
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/log4j/spi/LoggingEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/Level;

    iput-object v5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 437
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Level deserialization failed, reverting to default."

    invoke-static {v5, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    invoke-static {v4}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 444
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 445
    invoke-direct {p0, p1}, Lorg/apache/log4j/spi/LoggingEvent;->readLevel(Ljava/io/ObjectInputStream;)V

    .line 448
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lorg/apache/log4j/spi/LocationInfo;

    invoke-direct {v0, v1, v1}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 450
    :cond_0
    return-void
.end method

.method private writeLevel(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    invoke-virtual {v1}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 483
    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 484
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v1, Lorg/apache/log4j/spi/LoggingEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.Level"

    invoke-static {v1}, Lorg/apache/log4j/spi/LoggingEvent;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/spi/LoggingEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :goto_0
    if-ne v0, v1, :cond_1

    .line 485
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 492
    :goto_1
    return-void

    .line 484
    :cond_0
    sget-object v1, Lorg/apache/log4j/spi/LoggingEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 459
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 463
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 467
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 470
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 475
    invoke-direct {p0, p1}, Lorg/apache/log4j/spi/LoggingEvent;->writeLevel(Ljava/io/ObjectOutputStream;)V

    .line 476
    return-void
.end method


# virtual methods
.method public getFQNOfLoggerClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lorg/apache/log4j/Level;
    .locals 0

    .prologue
    .line 256
    iget-object p0, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .end local p0    # "this":Lorg/apache/log4j/spi/LoggingEvent;
    check-cast p0, Lorg/apache/log4j/Level;

    return-object p0
.end method

.method public getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lorg/apache/log4j/spi/LocationInfo;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    return-object v0
.end method

.method public getLogger()Lorg/apache/log4j/Category;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getMDC(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    .local v0, "r":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 332
    .end local v0    # "r":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Lorg/apache/log4j/MDC;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getMDCCopy()V
    .locals 2

    .prologue
    .line 341
    iget-boolean v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 345
    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v0

    .line 346
    .local v0, "t":Ljava/util/Hashtable;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 350
    .end local v0    # "t":Ljava/util/Hashtable;
    :cond_0
    return-void
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    .line 290
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNDC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 303
    invoke-static {}, Lorg/apache/log4j/NDC;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndc:Ljava/lang/String;

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndc:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 2

    .prologue
    .line 582
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 584
    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 589
    .local v0, "properties":Ljava/util/Map;
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 587
    .end local v0    # "properties":Ljava/util/Map;
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .restart local v0    # "properties":Ljava/util/Map;
    goto :goto_0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 527
    .local v1, "value":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 528
    .local v0, "retval":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    :cond_0
    return-object v0
.end method

.method public getPropertyKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRenderedMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 354
    iget-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 356
    iget-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    .line 368
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    return-object v3

    .line 358
    :cond_1
    iget-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    invoke-virtual {v3}, Lorg/apache/log4j/Category;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    .line 360
    .local v1, "repository":Lorg/apache/log4j/spi/LoggerRepository;
    instance-of v3, v1, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v3, :cond_2

    .line 361
    move-object v0, v1

    check-cast v0, Lorg/apache/log4j/spi/RendererSupport;

    move-object v2, v0

    .line 362
    .local v2, "rs":Lorg/apache/log4j/spi/RendererSupport;
    invoke-interface {v2}, Lorg/apache/log4j/spi/RendererSupport;->getRendererMap()Lorg/apache/log4j/or/RendererMap;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/apache/log4j/or/RendererMap;->findAndRender(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    goto :goto_0

    .line 364
    .end local v2    # "rs":Lorg/apache/log4j/spi/RendererSupport;
    :cond_2
    iget-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 381
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    return-object v0
.end method

.method public getThrowableStrRep()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    if-nez v0, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-virtual {v0}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTimeStamp()J
    .locals 2

    .prologue
    .line 552
    iget-wide v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    return-wide v0
.end method

.method public final locationInformationExists()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 506
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 509
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 510
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 512
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method
