.class Ldolphin/webkit/ie;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ldolphin/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewClassic;I)V
    .locals 0

    .prologue
    .line 10276
    iput-object p1, p0, Ldolphin/webkit/ie;->b:Ldolphin/webkit/WebViewClassic;

    iput p2, p0, Ldolphin/webkit/ie;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 10278
    iget-object v0, p0, Ldolphin/webkit/ie;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Ldolphin/webkit/ie;->a:I

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/WebViewCore;->sendMessage(II)V

    .line 10279
    const/4 v0, 0x1

    return v0
.end method
