.class public final Lcom/inmobi/androidsdk/IMAdView;
.super Landroid/widget/RelativeLayout;
.source "IMAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/IMAdView$a;,
        Lcom/inmobi/androidsdk/IMAdView$AnimationType;
    }
.end annotation


# static fields
.field public static final INMOBI_AD_UNIT_120X600:I = 0xd

.field public static final INMOBI_AD_UNIT_300X250:I = 0xa

.field public static final INMOBI_AD_UNIT_320X48:I = 0x9

.field public static final INMOBI_AD_UNIT_320X50:I = 0xf

.field public static final INMOBI_AD_UNIT_468X60:I = 0xc

.field public static final INMOBI_AD_UNIT_728X90:I = 0xb

.field public static final INMOBI_INTERNAL_TAG:Ljava/lang/String; = "ref-__in__rt"

.field public static final INMOBI_REF_TAG:Ljava/lang/String; = "ref-tag"

.field public static final REFRESH_INTERVAL_DEFAULT:I = 0x3c

.field public static final REFRESH_INTERVAL_OFF:I = -0x1


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

.field private E:Lcom/inmobi/androidsdk/IMAdView$a;

.field private F:Landroid/view/View$OnTouchListener;

.field private G:Landroid/view/animation/Animation$AnimationListener;

.field private H:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

.field private I:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

.field private a:I

.field private b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/app/Activity;

.field private f:Z

.field private g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

.field private h:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/view/animation/Animation;

.field private m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/inmobi/androidsdk/IMAdListener;

.field private r:Lcom/inmobi/androidsdk/IMAdRequest;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:J

.field private v:Z

.field private w:Z

.field private x:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

.field private y:Z

.field private z:Lcom/inmobi/androidsdk/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;-><init>(Landroid/content/Context;)V

    .line 231
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://localhost/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://localhost/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    .line 264
    iput-wide p4, p0, Lcom/inmobi/androidsdk/IMAdView;->u:J

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 266
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 204
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 138
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->a:I

    .line 148
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->f:Z

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    .line 180
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->u:J

    .line 184
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->w:Z

    .line 186
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->x:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 188
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->y:Z

    .line 190
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Ljava/lang/String;

    .line 191
    const-string v0, "http://i.w.sandbox.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->B:Ljava/lang/String;

    .line 1149
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$a;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    .line 1201
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$1;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->F:Landroid/view/View$OnTouchListener;

    .line 1236
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$2;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->G:Landroid/view/animation/Animation$AnimationListener;

    .line 1289
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$3;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 1346
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$4;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->a:I

    .line 148
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->f:Z

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    iput-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    .line 180
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->u:J

    .line 184
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->w:Z

    .line 186
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->x:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 188
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->y:Z

    .line 190
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Ljava/lang/String;

    .line 191
    const-string v0, "http://i.w.sandbox.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->B:Ljava/lang/String;

    .line 1149
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$a;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    .line 1201
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$1;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->F:Landroid/view/View$OnTouchListener;

    .line 1236
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$2;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->G:Landroid/view/animation/Animation$AnimationListener;

    .line 1289
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$3;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 1346
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$4;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 283
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://localhost/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    .line 286
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMAdView Constructor context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "appId"

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v1, "adSize"

    const/4 v2, -0x1

    invoke-interface {p2, v3, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 289
    const-string v2, "slotId"

    invoke-interface {p2, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    if-eqz v2, :cond_0

    .line 291
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/androidsdk/IMAdView;->u:J

    .line 293
    :cond_0
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, v1, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 294
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 326
    if-gez p1, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Ad Size. Please provide a valid Ad Size. If Ad Size is declared in the layout XML, please provide a valid \'adSize\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, adSize=\"yourAdSize\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    return-void
.end method

.method private a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->y:Z

    if-nez v0, :cond_1

    .line 776
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 777
    const-string v1, "IMAdView not sending callback because the view is not added to any window."

    .line 776
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Lcom/inmobi/androidsdk/IMAdListener;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/IMAdView$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/androidsdk/IMAdView$5;-><init>(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 333
    if-nez p1, :cond_0

    .line 334
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMSDKUtil;->validateAdConfiguration(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    invoke-direct {p0, p2}, Lcom/inmobi/androidsdk/IMAdView;->a(I)V

    .line 344
    invoke-static {p3}, Lcom/inmobi/androidsdk/ai/controller/util/IMSDKUtil;->validateAppID(Ljava/lang/String;)V

    .line 346
    iput-object p3, p0, Lcom/inmobi/androidsdk/IMAdView;->s:Ljava/lang/String;

    .line 347
    iput p2, p0, Lcom/inmobi/androidsdk/IMAdView;->t:I

    .line 349
    invoke-static {p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMSDKUtil;->getRootActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    .line 350
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_1

    .line 351
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_2

    .line 355
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 356
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->d:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    .line 359
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->d:Landroid/widget/LinearLayout;

    .line 360
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->d:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 361
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v2

    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 360
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->F:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 363
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 364
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 367
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->e()V

    .line 369
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->d()V

    .line 372
    new-instance v0, Lcom/inmobi/androidsdk/a;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->G:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/androidsdk/a;-><init>(Lcom/inmobi/androidsdk/IMAdView;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->z:Lcom/inmobi/androidsdk/a;

    .line 374
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    if-eqz v0, :cond_0

    .line 852
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->b(Z)V

    .line 854
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestOnAdDismiss(Landroid/os/Message;)V

    .line 856
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;

    .line 857
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    .line 858
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    .line 859
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    .line 861
    iget-object v4, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Lcom/inmobi/androidsdk/IMAdView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 862
    iget-object v4, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    const/16 v6, 0x69

    invoke-virtual {v4, v6}, Lcom/inmobi/androidsdk/IMAdView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 863
    iget-object v4, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    const/16 v7, 0x6a

    invoke-virtual {v4, v7}, Lcom/inmobi/androidsdk/IMAdView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 864
    iget-object v8, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    move-object v4, p1

    .line 856
    invoke-direct/range {v0 .. v8}, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;-><init>(Lcom/inmobi/androidsdk/impl/IMAdUnit;Lcom/inmobi/androidsdk/impl/IMUserInfo;Landroid/content/Context;Landroid/view/MotionEvent;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 864
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMClickProcessingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->l()V

    .line 873
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 869
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Exception processing ad click "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 870
    invoke-direct {p0, v9}, Lcom/inmobi/androidsdk/IMAdView;->b(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 771
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 848
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/impl/IMAdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->c(Z)V

    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/impl/IMAdUnit;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x65

    const/4 v5, 0x0

    const-string v7, "InMobiAndroidSDK_3.6.2"

    .line 426
    if-eqz p1, :cond_5

    sget-object v0, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->NONE:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 427
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 428
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->TEXT:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    if-ne v1, v2, :cond_0

    .line 431
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/StringBuffer;)V

    .line 434
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_1

    .line 441
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 442
    invoke-direct {v0, v1, v3, v5, v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    .line 441
    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 452
    :goto_0
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v1

    sget-object v3, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    if-ne v1, v3, :cond_4

    .line 453
    const-string v1, "InMobiAndroidSDK_3.6.2"

    .line 454
    const-string v1, "It came to AdActionType_Search method of displayad"

    .line 453
    invoke-static {v7, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    .line 456
    const/16 v3, 0x67

    invoke-virtual {v1, v3}, Lcom/inmobi/androidsdk/IMAdView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 455
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestOnSearchAdClicked(Landroid/os/Message;)V

    .line 457
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getDefaultTargetUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setAdUnitData(ZLjava/lang/String;)V

    .line 461
    :goto_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    .line 462
    invoke-virtual {v1, v6}, Lcom/inmobi/androidsdk/IMAdView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestOnPageFinishedCallback(Landroid/os/Message;)V

    .line 465
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    const/16 v3, 0x6c

    const-wide/32 v5, 0xea60

    invoke-virtual {v1, v3, v5, v6}, Lcom/inmobi/androidsdk/IMAdView$a;->sendEmptyMessageDelayed(IJ)Z

    .line 467
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->reinitializeExpandProperties()V

    .line 469
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "<html><head><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=no,maximum-scale=1\"><meta http-equiv=\"Content-Type\" content=\"text/html charset=utf-16le\"></head><body style=\"margin:0;padding:0\">"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 470
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    const-string v3, "text/html"

    .line 473
    iget-object v5, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    .line 469
    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_2
    return-void

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_3

    .line 447
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 448
    invoke-direct {v0, v1, v3, v5, v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    .line 447
    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {v0, v5, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setAdUnitData(ZLjava/lang/String;)V

    goto :goto_1

    .line 476
    :cond_5
    invoke-direct {p0, v5}, Lcom/inmobi/androidsdk/IMAdView;->a(Z)V

    .line 477
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v0, "Cannot load Ad. Invalid Ad Response"

    invoke-static {v7, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    sget-object v0, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 478
    invoke-direct {p0, v6, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "#BGCOLOR1"

    .line 487
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 490
    const-string v0, "<style>#im_c { background: -webkit-gradient(linear, left top, left bottom, from(#BGCOLOR1), to(#BGCOLOR2)) !important;\tbackground: -moz-linear-gradient(top,  #BGCOLOR1,  #BGCOLOR2) !important;} </style>"

    .line 491
    const-string v1, "#BGCOLOR1"

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Ljava/lang/String;

    .line 490
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    const-string v1, "#BGCOLOR2"

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 505
    const-string v0, "<style>#im_text {\tcolor:#TEXTCOLOR !important;} </style>"

    const-string v1, "#TEXTCOLOR"

    .line 506
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/lang/String;

    .line 505
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    :cond_1
    return-void

    .line 497
    :cond_2
    const-string v0, "<style>#im_c { \tbackground:#BGCOLOR1 !important;} </style>"

    const-string v1, "#BGCOLOR1"

    .line 498
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Ljava/lang/String;

    .line 497
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 695
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 696
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 971
    if-nez p1, :cond_0

    .line 972
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Color cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 976
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 977
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid color format.Color should be of the format #rgb or #rrggbb "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/impl/IMAdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/IMAdUnit;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 735
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 736
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/16 v2, 0x140

    .line 378
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 384
    :try_start_0
    iget v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:I

    packed-switch v1, :pswitch_data_0

    .line 409
    const/16 v1, 0x32

    .line 412
    :goto_0
    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 413
    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 414
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 415
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 416
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_1
    return-void

    .line 388
    :pswitch_0
    const/16 v1, 0x30

    .line 389
    goto :goto_0

    .line 391
    :pswitch_1
    const/16 v1, 0x12c

    .line 392
    const/16 v2, 0xfa

    move v3, v2

    move v2, v1

    move v1, v3

    .line 393
    goto :goto_0

    .line 395
    :pswitch_2
    const/16 v1, 0x2d9

    .line 396
    const/16 v2, 0x5a

    move v3, v2

    move v2, v1

    move v1, v3

    .line 397
    goto :goto_0

    .line 399
    :pswitch_3
    const/16 v1, 0x1d4

    .line 400
    const/16 v2, 0x3c

    move v3, v2

    move v2, v1

    move v1, v3

    .line 401
    goto :goto_0

    .line 403
    :pswitch_4
    const/16 v1, 0x78

    .line 404
    const/16 v2, 0x258

    move v3, v2

    move v2, v1

    move v1, v3

    .line 405
    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 420
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Cannot set default size for adview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->l()V

    return-void
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/IMAdView;->w:Z

    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 743
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/IMAdView;->f:Z

    .line 744
    if-eqz p1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->deinit()V

    .line 747
    iput-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 753
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->deinit()V

    .line 751
    iput-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->h:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/impl/IMUserInfo;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->h:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    .line 516
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->b(Z)V

    return-void
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->i()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 520
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    .line 523
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 524
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 526
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 527
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    .line 528
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    check-cast v0, Landroid/view/WindowManager;

    .line 529
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 530
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getDisplayWidth(Landroid/view/Display;)I

    move-result v2

    .line 531
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getDisplayHeight(Landroid/view/Display;)I

    move-result v0

    .line 532
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->setScreenDensity(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->setScreenSize(Ljava/lang/String;)V

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iget v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    .line 550
    iget-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->u:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iget-wide v1, p0, Lcom/inmobi/androidsdk/IMAdView;->u:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->setSlotId(Ljava/lang/String;)V

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->r:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 553
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    const-string v1, "InMobiAndroidSDK_3.6.2"

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occured while setting user agent"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/IMAdUnit;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->removeAllViews()V

    .line 558
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    if-ne v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocusFromTouch()Z

    .line 570
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->RICH_MEDIA:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    if-eq v0, v1, :cond_1

    .line 571
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    if-eq v0, v1, :cond_1

    .line 572
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 575
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->c(Z)V

    .line 576
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Z)V

    .line 577
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    invoke-direct {p0, v3, v4}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 584
    :goto_2
    return-void

    .line 565
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 566
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    if-ne v0, v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocusFromTouch()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    :try_start_2
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Error swapping banner ads"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 581
    invoke-direct {p0, v3, v4}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_2

    .line 575
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 580
    :catchall_0
    move-exception v0

    .line 581
    invoke-direct {p0, v3, v4}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 583
    throw v0
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->k()V

    return-void
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 673
    .line 674
    if-nez v2, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->v:Z

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->validateAppId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 687
    :goto_0
    return v0

    .line 682
    :cond_0
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:I

    if-gez v0, :cond_1

    .line 683
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Invalid Ad Size. Please provide a valid adSize."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 684
    goto :goto_0

    .line 687
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/IMAdView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private i()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "InMobiAndroidSDK_3.6.2"

    .line 700
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 731
    :goto_0
    return v0

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 713
    :goto_1
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v1

    .line 715
    const-string v2, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current Ad State: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    sget-object v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 717
    sget-object v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 718
    sget-object v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 719
    :cond_1
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 721
    const-string v0, "Current Ad State is neither default nor loading. New ad will not be shown."

    .line 719
    invoke-static {v5, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 722
    goto :goto_0

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_1

    .line 727
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 728
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v0, "New ad will not be shown because the present ad is busy. Eg. Video/audio is playing, etc."

    invoke-static {v5, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 729
    goto :goto_0

    .line 731
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdView$a;
    .locals 1
    .parameter

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    return-object v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->f:Z

    return v0
.end method

.method static synthetic k(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->D:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 877
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 878
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 884
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 886
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Error setHighlightedBGColor"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/inmobi/androidsdk/IMAdView;)I
    .locals 1
    .parameter

    .prologue
    .line 138
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->a:I

    return v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :goto_0
    return-void

    .line 899
    :catch_0
    move-exception v0

    .line 900
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Error setNormalBGColor"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/inmobi/androidsdk/IMAdView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 1479
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-virtual {v0, v3}, Lcom/inmobi/androidsdk/IMAdView$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-virtual {v0, v3}, Lcom/inmobi/androidsdk/IMAdView$a;->removeMessages(I)V

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    iget v1, p0, Lcom/inmobi/androidsdk/IMAdView;->a:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/inmobi/androidsdk/IMAdView$a;->sendEmptyMessageDelayed(IJ)Z

    .line 1484
    return-void
.end method

.method static synthetic n(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/IMUserInfo;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    return-object v0
.end method

.method static synthetic o(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->w:Z

    return v0
.end method

.method static synthetic p(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->f()V

    return-void
.end method

.method static synthetic q(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdView$AnimationType;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->x:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    return-object v0
.end method

.method static synthetic r(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/a;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->z:Lcom/inmobi/androidsdk/a;

    return-object v0
.end method

.method static synthetic s(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdListener;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Lcom/inmobi/androidsdk/IMAdListener;

    return-object v0
.end method

.method private setAdServerTestUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->B:Ljava/lang/String;

    .line 650
    return-void
.end method

.method private setAdServerUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Ljava/lang/String;

    .line 640
    return-void
.end method

.method static synthetic t(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1476
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->m()V

    return-void
.end method


# virtual methods
.method a()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Landroid/view/animation/Animation;

    return-object v0
.end method

.method a(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Landroid/view/animation/Animation;

    .line 761
    return-void
.end method

.method b()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/view/animation/Animation;

    return-object v0
.end method

.method b(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/view/animation/Animation;

    .line 769
    return-void
.end method

.method public getAdSize()I
    .locals 1

    .prologue
    .line 1412
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getIMAdListener()Lcom/inmobi/androidsdk/IMAdListener;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Lcom/inmobi/androidsdk/IMAdListener;

    return-object v0
.end method

.method public getIMAdRequest()Lcom/inmobi/androidsdk/IMAdRequest;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->r:Lcom/inmobi/androidsdk/IMAdRequest;

    return-object v0
.end method

.method public getSlotId()J
    .locals 2

    .prologue
    .line 1441
    iget-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->u:J

    return-wide v0
.end method

.method public declared-synchronized loadNewAd()V
    .locals 7

    .prologue
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 595
    monitor-enter p0

    :try_start_0
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, " >>>> Start loading new Ad <<<<"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    const/16 v0, 0x65

    .line 600
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 599
    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 630
    :goto_0
    monitor-exit p0

    return-void

    .line 602
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    const/16 v0, 0x65

    .line 604
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_CLICK_IN_PROGRESS:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 603
    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    :try_start_3
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Error in loading ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 606
    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 607
    const/16 v0, 0x65

    .line 608
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 607
    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 612
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Z)V

    .line 613
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->e()V

    .line 614
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->setRefreshType(I)V

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    const/16 v1, 0x6b

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/IMAdView$a;->sendEmptyMessageDelayed(IJ)Z

    .line 620
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView$a;->removeMessages(I)V

    .line 622
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->D:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    .line 624
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->D:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->h:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    .line 625
    sget-object v3, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    iget-object v4, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Ljava/lang/String;

    .line 626
    iget-object v5, p0, Lcom/inmobi/androidsdk/IMAdView;->B:Ljava/lang/String;

    iget-object v6, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;

    .line 624
    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->asyncRequestAd(Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/IMNiceInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 663
    if-eqz p1, :cond_0

    .line 664
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdRequest;->isTestMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->v:Z

    .line 665
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    .line 668
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1173
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->y:Z

    .line 1176
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->c()V

    .line 1178
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->a:I

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 1179
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1184
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "onDetatchedFromWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->y:Z

    .line 1189
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 1191
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1196
    :goto_0
    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->deinit()V

    .line 1199
    :cond_0
    return-void

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 1488
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 1490
    if-nez p1, :cond_0

    .line 1492
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->m()V

    .line 1494
    :cond_0
    return-void
.end method

.method public setAdBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    :goto_0
    return-void

    .line 921
    :cond_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Ljava/lang/String;

    .line 922
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/IMAdUnit;)V

    goto :goto_0
.end method

.method public setAdBackgroundGradientColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    :goto_0
    return-void

    .line 945
    :cond_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Ljava/lang/String;

    .line 946
    iput-object p2, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Ljava/lang/String;

    .line 947
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/IMAdUnit;)V

    goto :goto_0
.end method

.method public setAdSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 1430
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(I)V

    .line 1431
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:I

    .line 1432
    return-void
.end method

.method public setAdTextColor(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/lang/String;

    .line 967
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/IMAdUnit;)V

    goto :goto_0
.end method

.method public setAnimationType(Lcom/inmobi/androidsdk/IMAdView$AnimationType;)V
    .locals 0
    .parameter

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->x:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 1024
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1401
    invoke-static {p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMSDKUtil;->validateAppID(Ljava/lang/String;)V

    .line 1402
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->s:Ljava/lang/String;

    .line 1403
    return-void
.end method

.method public setIMAdListener(Lcom/inmobi/androidsdk/IMAdListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Lcom/inmobi/androidsdk/IMAdListener;

    .line 1325
    return-void
.end method

.method public setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->r:Lcom/inmobi/androidsdk/IMAdRequest;

    .line 1344
    return-void
.end method

.method public setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-string v2, ""

    .line 311
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key or Value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key or Value cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    if-eqz v0, :cond_4

    .line 320
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->setRefTagKey(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->setRefTagValue(Ljava/lang/String;)V

    .line 323
    :cond_4
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    const/16 v3, 0x64

    .line 1000
    if-ne p1, v0, :cond_0

    .line 1001
    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->a:I

    .line 1002
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-virtual {v0, v3}, Lcom/inmobi/androidsdk/IMAdView$a;->removeMessages(I)V

    .line 1014
    :goto_0
    return-void

    .line 1005
    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    .line 1006
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1007
    const-string v1, "Refresh Interval cannot be less than 20 seconds."

    .line 1006
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_1
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdView;->a:I

    .line 1011
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-virtual {v0, v3}, Lcom/inmobi/androidsdk/IMAdView$a;->removeMessages(I)V

    .line 1012
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/inmobi/androidsdk/IMAdView$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 0
    .parameter

    .prologue
    .line 1451
    iput-wide p1, p0, Lcom/inmobi/androidsdk/IMAdView;->u:J

    .line 1452
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x6c

    const/16 v1, 0x6b

    .line 1463
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView$a;->removeMessages(I)V

    .line 1465
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView$a;->sendEmptyMessage(I)Z

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/IMAdView$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/IMAdView$a;->removeMessages(I)V

    .line 1468
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Lcom/inmobi/androidsdk/IMAdView$a;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/IMAdView$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
