.class Lcom/twitter/android/client/WidgetControl$WidgetList;
.super Ljava/util/ArrayList;


# static fields
.field private static final serialVersionUID:J = 0x34a5f2fa19cd4953L


# instance fields
.field mCurrentListIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/client/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/client/WidgetControl$WidgetList;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    return-void
.end method
