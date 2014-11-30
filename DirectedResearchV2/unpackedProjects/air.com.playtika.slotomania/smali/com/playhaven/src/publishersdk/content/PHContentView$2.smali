.class Lcom/playhaven/src/publishersdk/content/PHContentView$2;
.super Ljava/lang/Object;
.source "PHContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;->getCloseBtn()Landroid/widget/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;


# direct methods
.method constructor <init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$2;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$2;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    # invokes: Lcom/playhaven/src/publishersdk/content/PHContentView;->buttonDismiss()V
    invoke-static {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->access$3(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "closeBtn - onClick"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method
