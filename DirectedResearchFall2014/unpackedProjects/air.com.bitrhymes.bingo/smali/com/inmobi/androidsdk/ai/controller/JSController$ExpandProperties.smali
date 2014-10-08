.class public Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
.super Lcom/inmobi/androidsdk/ai/controller/JSController$ReflectedParcelable;
.source "JSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/controller/JSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actualHeightRequested:I

.field public actualWidthRequested:I

.field public bottomStuff:I

.field public currentX:I

.field public currentY:I

.field public height:I

.field public isModal:Z

.field public lockOrientation:Z

.field public orientation:Ljava/lang/String;

.field public portraitHeightRequested:I

.field public portraitWidthRequested:I

.field public rotationAtExpand:Ljava/lang/String;

.field public topStuff:I

.field public useCustomClose:Z

.field public width:I

.field public x:I

.field public y:I

.field public zeroWidthHeight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties$1;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties$1;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 173
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 183
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/JSController$ReflectedParcelable;-><init>()V

    .line 188
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 189
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 190
    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 191
    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 192
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->isModal:Z

    .line 194
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    .line 197
    const-string v0, ""

    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    .line 198
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 199
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 200
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    .line 201
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->bottomStuff:I

    .line 202
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 203
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    .line 204
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    .line 205
    const-string v0, ""

    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    .line 206
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 207
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 208
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/JSController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 247
    return-void
.end method


# virtual methods
.method public reinitializeExpandProperties()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 212
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 213
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 214
    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 215
    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 216
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->isModal:Z

    .line 218
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    .line 219
    const-string v0, ""

    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    .line 220
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 221
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 222
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    .line 223
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->bottomStuff:I

    .line 224
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 225
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    .line 226
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    .line 227
    const-string v0, ""

    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    .line 228
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 229
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 230
    return-void
.end method
