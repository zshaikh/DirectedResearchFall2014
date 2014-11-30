.class public Lcom/sgn/mobile/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# static fields
.field private static final jsonFactory:Lorg/json/simple/parser/ContainerFactory;

.field private static parser:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/json/simple/parser/JSONParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/sgn/mobile/JSON$1;

    invoke-direct {v0}, Lcom/sgn/mobile/JSON$1;-><init>()V

    sput-object v0, Lcom/sgn/mobile/JSON;->parser:Ljava/lang/ThreadLocal;

    .line 79
    new-instance v0, Lcom/sgn/mobile/JSON$2;

    invoke-direct {v0}, Lcom/sgn/mobile/JSON$2;-><init>()V

    sput-object v0, Lcom/sgn/mobile/JSON;->jsonFactory:Lorg/json/simple/parser/ContainerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static laxParse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const-string v0, "\\b(\\w+):"

    const-string v1, "\"$1\":"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 69
    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgn/mobile/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    sget-object v1, Lcom/sgn/mobile/JSON;->parser:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/simple/parser/JSONParser;

    sget-object v2, Lcom/sgn/mobile/JSON;->jsonFactory:Lorg/json/simple/parser/ContainerFactory;

    invoke-virtual {v1, p0, v2}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 40
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 41
    .local v0, "e":Lorg/json/simple/parser/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/simple/parser/ParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static read(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    .line 47
    :try_start_0
    sget-object v1, Lcom/sgn/mobile/JSON;->parser:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/simple/parser/JSONParser;

    invoke-virtual {v1, p0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 48
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 49
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 51
    .local v0, "e":Lorg/json/simple/parser/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static stringify(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-static {p0}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
