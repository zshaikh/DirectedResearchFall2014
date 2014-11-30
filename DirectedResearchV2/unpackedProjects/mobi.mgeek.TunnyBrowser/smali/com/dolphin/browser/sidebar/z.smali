.class final Lcom/dolphin/browser/sidebar/z;
.super Lcom/dolphin/browser/c/t;
.source "RightBarController.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/x;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/x;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/z;->a:Lcom/dolphin/browser/sidebar/x;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolphin/browser/c/a;

    new-instance v1, Lcom/dolphin/browser/c/r;

    invoke-direct {v1, p2, v2}, Lcom/dolphin/browser/c/r;-><init>(IZ)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Lcom/dolphin/browser/c/k;

    invoke-direct {v2}, Lcom/dolphin/browser/c/k;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/c/t;-><init>([Lcom/dolphin/browser/c/a;)V

    .line 68
    return-void
.end method
