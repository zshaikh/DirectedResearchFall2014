.class public abstract Lam/sunrise/android/calendar/sync/n;
.super Ljava/lang/Object;
.source "SunriseDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lam/sunrise/android/calendar/sync/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/sync/n;Lam/sunrise/android/calendar/sync/m;)Lam/sunrise/android/calendar/sync/m;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/n;->a:Lam/sunrise/android/calendar/sync/m;

    return-object p1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/n;->a:Lam/sunrise/android/calendar/sync/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/m;->a()Z

    move-result v0

    return v0
.end method
