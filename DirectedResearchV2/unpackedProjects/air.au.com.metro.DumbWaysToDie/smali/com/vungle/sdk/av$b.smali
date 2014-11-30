.class public interface abstract Lcom/vungle/sdk/av$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/vungle/sdk/av$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/vungle/sdk/av$b$1;

    invoke-direct {v0}, Lcom/vungle/sdk/av$b$1;-><init>()V

    sput-object v0, Lcom/vungle/sdk/av$b;->a:Lcom/vungle/sdk/av$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
