.class Lcom/dolphin/browser/javascript/i;
.super Ljava/lang/Object;
.source "JavaScriptRequestHandler.java"

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
.field final synthetic a:Lcom/dolphin/browser/core/ITab;

.field final synthetic b:Lcom/dolphin/browser/javascript/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/javascript/h;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/dolphin/browser/javascript/i;->b:Lcom/dolphin/browser/javascript/h;

    iput-object p2, p0, Lcom/dolphin/browser/javascript/i;->a:Lcom/dolphin/browser/core/ITab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/javascript/i;->a:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
