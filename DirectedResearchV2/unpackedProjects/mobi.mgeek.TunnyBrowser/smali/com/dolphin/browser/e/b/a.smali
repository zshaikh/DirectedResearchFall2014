.class public Lcom/dolphin/browser/e/b/a;
.super Lcom/dolphin/browser/e/b/d;
.source "AESKeyProvider.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/dolphin/browser/e/b/d;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/e/b/a;->a(I)V

    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "AES"

    return-object v0
.end method
