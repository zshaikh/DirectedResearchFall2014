.class Ldolphin/webkit/io;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/iu;

.field final synthetic b:Landroid/widget/ListView;

.field final synthetic c:Ldolphin/webkit/in;


# direct methods
.method constructor <init>(Ldolphin/webkit/in;Ldolphin/webkit/iu;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 9662
    iput-object p1, p0, Ldolphin/webkit/io;->c:Ldolphin/webkit/in;

    iput-object p2, p0, Ldolphin/webkit/io;->a:Ldolphin/webkit/iu;

    iput-object p3, p0, Ldolphin/webkit/io;->b:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 9665
    iget-object v0, p0, Ldolphin/webkit/io;->c:Ldolphin/webkit/in;

    iget-object v0, v0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7b

    iget-object v2, p0, Ldolphin/webkit/io;->a:Ldolphin/webkit/iu;

    invoke-virtual {v2}, Ldolphin/webkit/iu;->getCount()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Ldolphin/webkit/io;->b:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ldolphin/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9669
    return-void
.end method
