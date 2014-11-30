.class final Lcom/vungle/sdk/a$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/vungle/sdk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/vungle/sdk/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/sdk/a;-><init>(B)V

    sput-object v0, Lcom/vungle/sdk/a$a;->a:Lcom/vungle/sdk/a;

    return-void
.end method
