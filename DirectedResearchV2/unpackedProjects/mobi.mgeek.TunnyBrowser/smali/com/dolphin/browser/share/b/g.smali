.class Lcom/dolphin/browser/share/b/g;
.super Ljava/lang/Object;
.source "EvernoteSharePlatform.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/ax;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/share/b/j;

.field final synthetic c:Lcom/dolphin/browser/share/b/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/b/f;Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/share/b/g;->c:Lcom/dolphin/browser/share/b/f;

    iput-object p2, p0, Lcom/dolphin/browser/share/b/g;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dolphin/browser/share/b/g;->b:Lcom/dolphin/browser/share/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/share/b/g;->c:Lcom/dolphin/browser/share/b/f;

    iget-object v1, p0, Lcom/dolphin/browser/share/b/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/share/b/g;->b:Lcom/dolphin/browser/share/b/j;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/share/b/f;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;I)V

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/share/b/g;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e058f

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 43
    return-void
.end method
