.class Lcom/sgn/mobile/SGNMobile$2;
.super Ljava/lang/Object;
.source "SGNMobile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sgn/mobile/SGNMobile;->showNativePopup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sgn/mobile/SGNMobile;

.field final synthetic val$buttonNumber:[I

.field final synthetic val$callback:Lcom/jesusla/ane/Closure;


# direct methods
.method constructor <init>(Lcom/sgn/mobile/SGNMobile;Lcom/jesusla/ane/Closure;[I)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sgn/mobile/SGNMobile$2;->this$0:Lcom/sgn/mobile/SGNMobile;

    iput-object p2, p0, Lcom/sgn/mobile/SGNMobile$2;->val$callback:Lcom/jesusla/ane/Closure;

    iput-object p3, p0, Lcom/sgn/mobile/SGNMobile$2;->val$buttonNumber:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 365
    const-string v1, "which: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget-object v1, p0, Lcom/sgn/mobile/SGNMobile$2;->val$callback:Lcom/jesusla/ane/Closure;

    if-eqz v1, :cond_1

    .line 367
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/sgn/mobile/SGNMobile$2;->val$buttonNumber:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/sgn/mobile/SGNMobile$2;->val$buttonNumber:[I

    aget v1, v1, v0

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/sgn/mobile/SGNMobile$2;->val$callback:Lcom/jesusla/ane/Closure;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 367
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "index":I
    :cond_1
    const-string v1, "Callback is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_2
    return-void
.end method
