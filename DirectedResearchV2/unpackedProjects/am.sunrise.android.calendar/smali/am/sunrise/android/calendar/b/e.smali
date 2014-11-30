.class public Lam/sunrise/android/calendar/b/e;
.super Ljava/lang/Object;
.source "DateUtils.java"


# instance fields
.field public a:Ljava/text/DateFormat;

.field public b:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/b/e;->a:Ljava/text/DateFormat;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/b/e;->b:Ljava/text/DateFormat;

    .line 66
    return-void
.end method
