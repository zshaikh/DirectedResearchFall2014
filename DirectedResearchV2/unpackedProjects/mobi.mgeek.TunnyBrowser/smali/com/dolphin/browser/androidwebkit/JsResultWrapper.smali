.class Lcom/dolphin/browser/androidwebkit/JsResultWrapper;
.super Ljava/lang/Object;
.source "JsResultWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IJsResult;


# instance fields
.field private final mResult:Landroid/webkit/JsResult;


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;->mResult:Landroid/webkit/JsResult;

    .line 32
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;->mResult:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 42
    return-void
.end method

.method public confirm()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;->mResult:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 47
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;->mResult:Landroid/webkit/JsResult;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getResult()Landroid/webkit/JsResult;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;->mResult:Landroid/webkit/JsResult;

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;->getResult()Landroid/webkit/JsResult;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;->mResult:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
