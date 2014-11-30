.class Lcom/redbox/android/utils/RedBoxOverlay$3;
.super Ljava/lang/Object;
.source "RedBoxOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/utils/RedBoxOverlay;->onTap(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/utils/RedBoxOverlay;


# direct methods
.method constructor <init>(Lcom/redbox/android/utils/RedBoxOverlay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/utils/RedBoxOverlay$3;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User asked for directions"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/utils/RedBoxOverlay$3;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v1, v1, Lcom/redbox/android/utils/RedBoxOverlay;->rblat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/redbox/android/utils/RedBoxOverlay$3;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v1, v1, Lcom/redbox/android/utils/RedBoxOverlay;->rblong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$3;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v1, p0, Lcom/redbox/android/utils/RedBoxOverlay$3;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v1, v1, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/redbox/android/utils/RedBoxOverlay$3;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v2, v2, Lcom/redbox/android/utils/RedBoxOverlay;->rblat:Ljava/lang/String;

    iget-object v3, p0, Lcom/redbox/android/utils/RedBoxOverlay$3;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v3, v3, Lcom/redbox/android/utils/RedBoxOverlay;->rblong:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/redbox/android/utils/RedBoxOverlay;->getLocation(Landroid/location/LocationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    return-void
.end method
