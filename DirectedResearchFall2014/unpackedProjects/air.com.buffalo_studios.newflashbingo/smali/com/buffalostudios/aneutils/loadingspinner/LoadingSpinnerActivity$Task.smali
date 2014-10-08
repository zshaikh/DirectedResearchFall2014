.class Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;
.super Landroid/os/AsyncTask;
.source "LoadingSpinnerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _centerX:I

.field private _centerY:I

.field private _drawable:Landroid/graphics/drawable/Drawable;

.field private _spinner:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 122
    iput-object v0, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_drawable:Landroid/graphics/drawable/Drawable;

    .line 123
    iput-object v0, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    .line 126
    iput-object p1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_activity:Landroid/app/Activity;

    .line 127
    iput p2, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_centerX:I

    .line 128
    iput p3, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_centerY:I

    .line 129
    iput-object p4, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_drawable:Landroid/graphics/drawable/Drawable;

    .line 130
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method protected onPreExecute()V
    .locals 14

    .prologue
    const/4 v13, -0x2

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 134
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_activity:Landroid/app/Activity;

    const/4 v5, 0x0

    const v6, 0x1010077

    invoke-direct {v1, v2, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    .line 135
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v12, v12}, Landroid/widget/ProgressBar;->measure(II)V

    .line 136
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v10

    .line 137
    .local v10, "spinnerWidth":I
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v9

    .line 139
    .local v9, "spinnerHeight":I
    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_activity:Landroid/app/Activity;

    invoke-direct {v7, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 140
    .local v7, "layout":Landroid/widget/RelativeLayout;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v8, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v8, v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    const/16 v1, 0xa

    invoke-virtual {v8, v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    iget v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_centerX:I

    div-int/lit8 v2, v10, 0x2

    sub-int/2addr v1, v2

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 145
    iget v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_centerY:I

    div-int/lit8 v2, v9, 0x2

    sub-int/2addr v1, v2

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 146
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 150
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 158
    .local v0, "anim":Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 159
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 160
    invoke-virtual {v0, v11}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 161
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 164
    .end local v0    # "anim":Landroid/view/animation/RotateAnimation;
    :cond_0
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-object v1, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->_activity:Landroid/app/Activity;

    invoke-virtual {v1, v7, v8}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
