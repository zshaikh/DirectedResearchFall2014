.class public final Lcom/vungle/sdk/VunglePub$Gender;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/VunglePub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gender"
.end annotation


# static fields
.field public static final FEMALE:I = 0x1

.field public static final MALE:I = 0x0

.field public static final UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .parameter "gender"

    .prologue
    .line 505
    packed-switch p0, :pswitch_data_0

    .line 511
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 507
    :pswitch_0
    const-string v0, "male"

    goto :goto_0

    .line 509
    :pswitch_1
    const-string v0, "female"

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
