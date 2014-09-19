.class final Lcom/vungle/sdk/au$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/sdk/an;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/sdk/an",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/au;

.field private volatile b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/au;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vungle/sdk/au$1;->a:Lcom/vungle/sdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/vungle/sdk/au;->h()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/au$1;->b:Ljava/lang/Object;

    return-void
.end method
