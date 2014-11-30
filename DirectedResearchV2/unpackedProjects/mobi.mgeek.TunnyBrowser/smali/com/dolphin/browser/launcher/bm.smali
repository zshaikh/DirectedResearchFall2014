.class Lcom/dolphin/browser/launcher/bm;
.super Ljava/lang/Object;
.source "LauncherView.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/s;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/bk;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/bk;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bm;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bm;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-static {v0, p1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/bk;Ljava/util/List;)V

    .line 127
    return-void
.end method
