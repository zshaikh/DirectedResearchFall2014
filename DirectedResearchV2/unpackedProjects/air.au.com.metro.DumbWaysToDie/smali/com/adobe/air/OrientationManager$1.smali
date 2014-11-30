.class Lcom/adobe/air/OrientationManager$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/OrientationManager;->onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/OrientationManager;


# direct methods
.method constructor <init>(Lcom/adobe/air/OrientationManager;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7

    .prologue
    const/16 v6, 0xe1

    const/16 v5, 0x87

    const/16 v2, 0x2d

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 241
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 255
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 257
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    # setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 258
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 281
    :cond_0
    :goto_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mAutoOrients:Z
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)Z

    move-result v1

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v2

    if-eq v1, v2, :cond_a

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    if-eq v1, v0, :cond_a

    .line 285
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # invokes: Lcom/adobe/air/OrientationManager;->isReOrientingAllowed()Z
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$500(Lcom/adobe/air/OrientationManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanging(II)Z

    move-result v1

    .line 293
    if-eqz v1, :cond_8

    .line 295
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    .line 296
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    # setter for: Lcom/adobe/air/OrientationManager;->mFinalOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$602(Lcom/adobe/air/OrientationManager;I)I

    .line 313
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    # setter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$202(Lcom/adobe/air/OrientationManager;I)I

    .line 314
    return-void

    .line 260
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v5, :cond_3

    .line 262
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    # setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 263
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 265
    :cond_3
    if-lt p1, v5, :cond_4

    if-ge p1, v6, :cond_4

    .line 267
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    # setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 268
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 270
    :cond_4
    if-lt p1, v6, :cond_5

    const/16 v1, 0x13b

    if-ge p1, v1, :cond_5

    .line 272
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    # setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 273
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 275
    :cond_5
    if-ltz p1, :cond_6

    if-lt p1, v2, :cond_7

    :cond_6
    const/16 v1, 0x13b

    if-lt p1, v1, :cond_0

    const/16 v1, 0x168

    if-ge p1, v1, :cond_0

    .line 277
    :cond_7
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    # setter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/adobe/air/OrientationManager;->access$002(Lcom/adobe/air/OrientationManager;I)I

    .line 278
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 300
    :cond_8
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v2, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # invokes: Lcom/adobe/air/OrientationManager;->setSensorBasedOrientation()Z
    invoke-static {v2}, Lcom/adobe/air/OrientationManager;->access$700(Lcom/adobe/air/OrientationManager;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_2
    # setter for: Lcom/adobe/air/OrientationManager;->mFinalOrientation:I
    invoke-static {v1, v0}, Lcom/adobe/air/OrientationManager;->access$602(Lcom/adobe/air/OrientationManager;I)I

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    goto :goto_2

    .line 305
    :cond_a
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mAutoOrients:Z
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mSetOrientation:Z
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$800(Lcom/adobe/air/OrientationManager;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$900(Lcom/adobe/air/OrientationManager;)F

    move-result v0

    const v1, 0x40533333

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 309
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # getter for: Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 310
    :cond_b
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    # setter for: Lcom/adobe/air/OrientationManager;->mSetOrientation:Z
    invoke-static {v0, v4}, Lcom/adobe/air/OrientationManager;->access$802(Lcom/adobe/air/OrientationManager;Z)Z

    goto/16 :goto_1
.end method
