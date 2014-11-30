.class Lcom/dolphin/browser/androidwebkit/h;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/androidwebkit/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/g;)V
    .locals 0

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/h;->a:Lcom/dolphin/browser/androidwebkit/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/h;->a:Lcom/dolphin/browser/androidwebkit/g;

    iget-object v0, v0, Lcom/dolphin/browser/androidwebkit/g;->d:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1767
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
