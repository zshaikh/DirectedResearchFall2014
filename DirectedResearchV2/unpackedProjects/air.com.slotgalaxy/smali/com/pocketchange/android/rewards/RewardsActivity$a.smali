.class final Lcom/pocketchange/android/rewards/RewardsActivity$a;
.super Lcom/pocketchange/android/util/StackTraceElementExceptionFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/rewards/RewardsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/pocketchange/android/util/StackTraceElementExceptionFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public traceElementMatches(Ljava/lang/StackTraceElement;)Z
    .locals 4
    .param p1, "element"    # Ljava/lang/StackTraceElement;

    .prologue
    const/4 v3, 0x0

    .line 645
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 646
    if-nez v0, :cond_0

    move v0, v3

    .line 653
    :goto_0
    return v0

    .line 649
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 650
    if-nez v1, :cond_1

    move v0, v3

    .line 651
    goto :goto_0

    .line 653
    :cond_1
    const-string v2, "android.database.sqlite.SQLiteDatabase"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "openDatabase"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method
