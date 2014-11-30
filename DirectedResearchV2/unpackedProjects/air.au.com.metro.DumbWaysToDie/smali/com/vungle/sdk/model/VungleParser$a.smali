.class final Lcom/vungle/sdk/model/VungleParser$a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/model/VungleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vungle/sdk/aa$a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/vungle/sdk/model/VungleParser$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/vungle/sdk/model/VungleParser$a;

    invoke-direct {v0}, Lcom/vungle/sdk/model/VungleParser$a;-><init>()V

    sput-object v0, Lcom/vungle/sdk/model/VungleParser$a;->a:Lcom/vungle/sdk/model/VungleParser$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 229
    check-cast p1, Lcom/vungle/sdk/aa$a;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/vungle/sdk/aa$a;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-object v0, p1, Lcom/vungle/sdk/aa$a;->a:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p2, Lcom/vungle/sdk/aa$a;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
