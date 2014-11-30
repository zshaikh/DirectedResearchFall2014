.class Lcom/dolphin/browser/theme/d/f;
.super Lcom/dolphin/browser/util/f;
.source "ThemeInstallerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/dolphin/browser/theme/d/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/d/d;Landroid/net/Uri;IZZZ)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dolphin/browser/theme/d/f;->f:Lcom/dolphin/browser/theme/d/d;

    iput-object p2, p0, Lcom/dolphin/browser/theme/d/f;->a:Landroid/net/Uri;

    iput p3, p0, Lcom/dolphin/browser/theme/d/f;->b:I

    iput-boolean p4, p0, Lcom/dolphin/browser/theme/d/f;->c:Z

    iput-boolean p5, p0, Lcom/dolphin/browser/theme/d/f;->d:Z

    iput-boolean p6, p0, Lcom/dolphin/browser/theme/d/f;->e:Z

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/d/f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/f;->f:Lcom/dolphin/browser/theme/d/d;

    iget-object v1, p0, Lcom/dolphin/browser/theme/d/f;->a:Landroid/net/Uri;

    iget v2, p0, Lcom/dolphin/browser/theme/d/f;->b:I

    iget-boolean v3, p0, Lcom/dolphin/browser/theme/d/f;->c:Z

    iget-boolean v4, p0, Lcom/dolphin/browser/theme/d/f;->d:Z

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/dolphin/browser/theme/d/f;->e:Z

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/theme/d/d;->a(Lcom/dolphin/browser/theme/d/d;Landroid/net/Uri;IZZZZ)V

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/d/f;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
