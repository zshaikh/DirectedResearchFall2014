.class Lcom/dolphin/browser/launcher/bt;
.super Ljava/lang/Object;
.source "LauncherView.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/bk;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/bk;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bt;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bt;->a:Lcom/dolphin/browser/launcher/bk;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/bt;->a:Lcom/dolphin/browser/launcher/bk;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/bk;->c:[I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->b([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bt;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
