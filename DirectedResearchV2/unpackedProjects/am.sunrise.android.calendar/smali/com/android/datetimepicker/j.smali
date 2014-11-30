.class public Lcom/android/datetimepicker/j;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static a(II)I
    .locals 2

    .prologue
    .line 62
    packed-switch p0, :pswitch_data_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    const/16 v0, 0x1f

    .line 77
    :goto_0
    return v0

    .line 75
    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    .line 77
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v3, 0x3f800000

    .line 127
    const/4 v0, 0x0

    invoke-static {v0, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 128
    const v1, 0x3e8ccccd

    invoke-static {v1, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 129
    const v2, 0x3f30a3d7

    invoke-static {v2, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 130
    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 132
    const-string v4, "scaleX"

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Keyframe;

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 133
    const-string v5, "scaleY"

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Keyframe;

    aput-object v0, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 134
    new-array v1, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v1, v7

    aput-object v0, v1, v8

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 136
    const-wide/16 v1, 0x220

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 138
    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/android/datetimepicker/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
