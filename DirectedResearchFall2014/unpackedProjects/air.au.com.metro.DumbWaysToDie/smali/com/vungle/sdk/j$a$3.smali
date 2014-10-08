.class final Lcom/vungle/sdk/j$a$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .prologue
    .line 394
    iput-object p1, p0, Lcom/vungle/sdk/j$a$3;->a:Lcom/vungle/sdk/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/vungle/sdk/j$a$3;->a:Lcom/vungle/sdk/j$a;

    iget-object v0, v0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 399
    iget-object v0, p0, Lcom/vungle/sdk/j$a$3;->a:Lcom/vungle/sdk/j$a;

    invoke-static {v0}, Lcom/vungle/sdk/j$a;->a(Lcom/vungle/sdk/j$a;)Z

    .line 400
    return-void
.end method
