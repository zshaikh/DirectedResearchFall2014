.class final Lcom/sgn/mobile/JSON$1;
.super Ljava/lang/ThreadLocal;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sgn/mobile/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/json/simple/parser/JSONParser;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sgn/mobile/JSON$1;->initialValue()Lorg/json/simple/parser/JSONParser;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/json/simple/parser/JSONParser;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    return-object v0
.end method
