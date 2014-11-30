.class Lcom/dolphin/browser/share/a/c;
.super Ljava/lang/Object;
.source "EvernoteAddTagDialog.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/bd;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/share/a/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/dolphin/browser/share/a/c;->b:Lcom/dolphin/browser/share/a/a;

    iput-object p2, p0, Lcom/dolphin/browser/share/a/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/b/c/x;)V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/share/a/c;->b:Lcom/dolphin/browser/share/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/a;->a(Lcom/dolphin/browser/share/a/a;)Lcom/dolphin/browser/share/a/t;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/x;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/share/a/t;->a(Ljava/lang/String;Z)V

    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/share/a/c;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0588

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 197
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/share/a/c;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0587

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 203
    return-void
.end method
