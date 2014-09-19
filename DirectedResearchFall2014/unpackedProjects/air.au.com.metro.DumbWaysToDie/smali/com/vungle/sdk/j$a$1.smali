.class final Lcom/vungle/sdk/j$a$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/j$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/j$a;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/j$a;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/vungle/sdk/j$a$1;->a:Lcom/vungle/sdk/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/vungle/sdk/j$a$1;->a:Lcom/vungle/sdk/j$a;

    iget-object v0, v0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 378
    iget-object v0, p0, Lcom/vungle/sdk/j$a$1;->a:Lcom/vungle/sdk/j$a;

    invoke-static {v0}, Lcom/vungle/sdk/j$a;->a(Lcom/vungle/sdk/j$a;)Z

    .line 379
    return-void
.end method
