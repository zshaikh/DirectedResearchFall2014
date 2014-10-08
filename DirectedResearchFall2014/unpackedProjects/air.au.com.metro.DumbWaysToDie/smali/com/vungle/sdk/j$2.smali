.class final Lcom/vungle/sdk/j$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/j;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/j;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/vungle/sdk/j$2;->a:Lcom/vungle/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/vungle/sdk/j$2;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 567
    iget-object v0, p0, Lcom/vungle/sdk/j$2;->a:Lcom/vungle/sdk/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vungle/sdk/j;->b:Z

    .line 568
    return-void
.end method
