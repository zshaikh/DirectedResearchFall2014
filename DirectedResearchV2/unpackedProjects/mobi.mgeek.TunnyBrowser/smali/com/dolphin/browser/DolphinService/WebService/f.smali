.class public Lcom/dolphin/browser/DolphinService/WebService/f;
.super Ljava/lang/Object;
.source "ServerResult.java"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/f;

    invoke-direct {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;-><init>()V

    .line 10
    instance-of v1, p0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 11
    check-cast p0, Ljava/lang/Throwable;

    iput-object p0, v0, Lcom/dolphin/browser/DolphinService/WebService/f;->b:Ljava/lang/Throwable;

    .line 16
    :goto_0
    return-object v0

    .line 13
    :cond_0
    iput-object p0, v0, Lcom/dolphin/browser/DolphinService/WebService/f;->a:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/f;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/f;->b:Ljava/lang/Throwable;

    throw v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/f;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/f;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/f;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
