.class Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;
.super Landroid/widget/LinearLayout;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/dialogs/custom/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogContent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;


# direct methods
.method public constructor <init>(Lcom/nativex/monetization/dialogs/custom/BaseDialog;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    .line 213
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 215
    const/high16 v1, 0x3f800000

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->setWeightSum(F)V

    .line 216
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog.DialogContent: Unexpected exception caught in DialogContent()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 228
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 229
    .local v10, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 230
    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 231
    .local v11, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 233
    .local v3, "heightSize":I
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 234
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    iget v12, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxScreenPercentage:F
    invoke-static {v13}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$000(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v4, v12

    .line 235
    .local v4, "maxHeight":I
    iget v12, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxScreenPercentage:F
    invoke-static {v13}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$000(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v5, v12

    .line 236
    .local v5, "maxWidth":I
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # invokes: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->calcDialogMaxWidthAndHeight(II)V
    invoke-static {v12, v4, v5}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$100(Lcom/nativex/monetization/dialogs/custom/BaseDialog;II)V

    .line 238
    move v9, v11

    .line 239
    .local v9, "width":I
    move v1, v3

    .line 241
    .local v1, "height":I
    move v7, p1

    .line 242
    .local v7, "measuredWidth":I
    move/from16 v6, p2

    .line 244
    .local v6, "measuredHeight":I
    sparse-switch v10, :sswitch_data_0

    .line 262
    :cond_0
    :goto_0
    :sswitch_0
    sparse-switch v2, :sswitch_data_1

    .line 279
    :cond_1
    :goto_1
    :sswitch_1
    invoke-super {p0, v7, v6}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 286
    .end local v1    # "height":I
    .end local v2    # "heightMode":I
    .end local v3    # "heightSize":I
    .end local v4    # "maxHeight":I
    .end local v5    # "maxWidth":I
    .end local v6    # "measuredHeight":I
    .end local v7    # "measuredWidth":I
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    .end local v9    # "width":I
    .end local v10    # "widthMode":I
    .end local v11    # "widthSize":I
    :goto_2
    return-void

    .line 249
    .restart local v1    # "height":I
    .restart local v2    # "heightMode":I
    .restart local v3    # "heightSize":I
    .restart local v4    # "maxHeight":I
    .restart local v5    # "maxWidth":I
    .restart local v6    # "measuredHeight":I
    .restart local v7    # "measuredWidth":I
    .restart local v8    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "width":I
    .restart local v10    # "widthMode":I
    .restart local v11    # "widthSize":I
    :sswitch_2
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I
    invoke-static {v12}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$200(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I

    move-result v12

    if-lez v12, :cond_3

    .line 250
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I
    invoke-static {v12}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$200(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I

    move-result v12

    if-ge v12, v9, :cond_2

    .line 251
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I
    invoke-static {v12}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$200(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I

    move-result v12

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_0

    .line 252
    :cond_2
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinWidth:I
    invoke-static {v12}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$300(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I

    move-result v12

    if-le v12, v9, :cond_0

    .line 253
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinWidth:I
    invoke-static {v12}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$300(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I

    move-result v12

    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_0

    .line 256
    :cond_3
    if-le v9, v5, :cond_0

    .line 257
    const/high16 v12, -0x80000000

    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_0

    .line 267
    :sswitch_3
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I
    invoke-static {v12}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$400(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I

    move-result v12

    if-lez v12, :cond_5

    .line 268
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I
    invoke-static {v12}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$400(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I

    move-result v12

    if-ge v12, v1, :cond_4

    .line 269
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I
    invoke-static {v12}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$400(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I

    move-result v12

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1

    .line 270
    :cond_4
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinHeight:I
    invoke-static {v12}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$500(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I

    move-result v12

    if-le v12, v1, :cond_1

    .line 271
    iget-object v12, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->this$0:Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinHeight:I
    invoke-static {v12}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->access$500(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I

    move-result v12

    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1

    .line 273
    :cond_5
    if-le v1, v4, :cond_1

    .line 274
    const/high16 v12, -0x80000000

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_1

    .line 280
    .end local v1    # "height":I
    .end local v2    # "heightMode":I
    .end local v3    # "heightSize":I
    .end local v4    # "maxHeight":I
    .end local v5    # "maxWidth":I
    .end local v6    # "measuredHeight":I
    .end local v7    # "measuredWidth":I
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    .end local v9    # "width":I
    .end local v10    # "widthMode":I
    .end local v11    # "widthSize":I
    :catch_0
    move-exception v12

    move-object v0, v12

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "BaseDialog.DialogContent: Unexpected exception caught in onMeasure()"

    invoke-static {v12}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/16 :goto_2

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 262
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->removeAllViews()V

    .line 290
    return-void
.end method
