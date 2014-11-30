.class public Lorg/apache/log4j/spi/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NA:Ljava/lang/String; = "?"

.field public static final NA_LOCATION_INFO:Lorg/apache/log4j/spi/LocationInfo;

.field static inVisualAge:Z = false

.field private static pw:Ljava/io/PrintWriter; = null

.field static final serialVersionUID:J = -0x1266441eb56e5a84L

.field private static sw:Ljava/io/StringWriter;


# instance fields
.field transient className:Ljava/lang/String;

.field transient fileName:Ljava/lang/String;

.field public fullInfo:Ljava/lang/String;

.field transient lineNumber:Ljava/lang/String;

.field transient methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, "?"

    .line 56
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    sput-object v0, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    .line 57
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/apache/log4j/spi/LocationInfo;->pw:Ljava/io/PrintWriter;

    .line 71
    new-instance v0, Lorg/apache/log4j/spi/LocationInfo;

    const-string v1, "?"

    const-string v1, "?"

    const-string v1, "?"

    const-string v1, "?"

    invoke-direct {v0, v2, v2, v2, v2}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/spi/LocationInfo;->NA_LOCATION_INFO:Lorg/apache/log4j/spi/LocationInfo;

    .line 77
    sput-boolean v3, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    .line 80
    :try_start_0
    const-string v0, "com.ibm.uvm.tools.DebugSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    .line 81
    const-string v0, "Detected IBM VisualAge environment."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    return-void

    :cond_0
    move v0, v3

    .line 80
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "line"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    .line 190
    iput-object p4, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {v0, p2}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 193
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-static {v0, p3}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 195
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-static {v0, p1}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 197
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-static {v0, p4}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 199
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "fqnOfCallingClass"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget-object v3, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    monitor-enter v3

    .line 113
    :try_start_0
    sget-object v4, Lorg/apache/log4j/spi/LocationInfo;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 114
    sget-object v4, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "s":Ljava/lang/String;
    sget-object v4, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-virtual {v4}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 116
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v2, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "ibegin":I
    if-eq v0, v6, :cond_0

    .line 132
    sget-object v3, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 133
    if-eq v0, v6, :cond_0

    .line 135
    sget v3, Lorg/apache/log4j/Layout;->LINE_SEP_LEN:I

    add-int/2addr v0, v3

    .line 138
    sget-object v3, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 139
    .local v1, "iend":I
    if-eq v1, v6, :cond_0

    .line 144
    sget-boolean v3, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    if-nez v3, :cond_2

    .line 146
    const-string v3, "at "

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 147
    if-eq v0, v6, :cond_0

    .line 150
    add-int/lit8 v0, v0, 0x3

    .line 153
    :cond_2
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    goto :goto_0

    .line 116
    .end local v0    # "ibegin":I
    .end local v1    # "iend":I
    .end local v2    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private static final appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const-string v4, "?"

    .line 209
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "?"

    move-object v2, v4

    .line 239
    :goto_0
    return-object v2

    .line 210
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 213
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 214
    .local v1, "iend":I
    if-ne v1, v5, :cond_2

    .line 215
    const-string v2, "?"

    iput-object v4, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    .line 239
    .end local v1    # "iend":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_0

    .line 217
    .restart local v1    # "iend":I
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "ibegin":I
    sget-boolean v2, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    if-eqz v2, :cond_3

    .line 230
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 233
    :cond_3
    if-ne v1, v5, :cond_4

    .line 234
    const-string v2, "?"

    iput-object v4, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_1

    .line 236
    :cond_4
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "?"

    .line 249
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "?"

    move-object v2, v4

    .line 260
    :goto_0
    return-object v2

    .line 251
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 252
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 253
    .local v1, "iend":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 254
    const-string v2, "?"

    iput-object v4, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 260
    .end local v1    # "iend":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 256
    .restart local v1    # "iend":I
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x28

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 257
    .local v0, "ibegin":I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getLineNumber()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "?"

    .line 270
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "?"

    move-object v2, v5

    .line 280
    :goto_0
    return-object v2

    .line 272
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 273
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 274
    .local v1, "iend":I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x3a

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 275
    .local v0, "ibegin":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 276
    const-string v2, "?"

    iput-object v5, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    .line 280
    .end local v0    # "ibegin":I
    .end local v1    # "iend":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    goto :goto_0

    .line 278
    .restart local v0    # "ibegin":I
    .restart local v1    # "iend":I
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "?"

    .line 288
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "?"

    move-object v2, v4

    .line 297
    :goto_0
    return-object v2

    .line 289
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 290
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 291
    .local v1, "iend":I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 292
    .local v0, "ibegin":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 293
    const-string v2, "?"

    iput-object v4, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    .line 297
    .end local v0    # "ibegin":I
    .end local v1    # "iend":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    goto :goto_0

    .line 295
    .restart local v0    # "ibegin":I
    .restart local v1    # "iend":I
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    goto :goto_1
.end method
