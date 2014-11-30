.class public Lorg/apache/james/mime4j/field/ContentTypeField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentTypeField.java"


# static fields
.field static final a:Lorg/apache/james/mime4j/field/FieldParser;

.field private static b:Lorg/apache/commons/logging/Log;


# instance fields
.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->b:Lorg/apache/commons/logging/Log;

    .line 252
    new-instance v0, Lorg/apache/james/mime4j/field/ContentTypeField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentTypeField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->c:Z

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->d:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->e:Ljava/util/Map;

    .line 67
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->e()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/Reader;)V

    .line 217
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->e()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->b()Ljava/lang/String;

    move-result-object v2

    .line 233
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->d:Ljava/lang/String;

    .line 236
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->c()Ljava/util/List;

    move-result-object v2

    .line 237
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d()Ljava/util/List;

    move-result-object v1

    .line 239
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 240
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 241
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 242
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    iget-object v6, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->e:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 218
    :catch_0
    move-exception v2

    .line 219
    sget-object v3, Lorg/apache/james/mime4j/field/ContentTypeField;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    sget-object v3, Lorg/apache/james/mime4j/field/ContentTypeField;->b:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\': "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 222
    :cond_0
    iput-object v2, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->f:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    goto/16 :goto_0

    .line 223
    :catch_1
    move-exception v2

    .line 224
    sget-object v3, Lorg/apache/james/mime4j/field/ContentTypeField;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    sget-object v3, Lorg/apache/james/mime4j/field/ContentTypeField;->b:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\': "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 227
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->f:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    goto/16 :goto_0

    .line 249
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->c:Z

    .line 250
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "boundary"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->c:Z

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->f()V

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
