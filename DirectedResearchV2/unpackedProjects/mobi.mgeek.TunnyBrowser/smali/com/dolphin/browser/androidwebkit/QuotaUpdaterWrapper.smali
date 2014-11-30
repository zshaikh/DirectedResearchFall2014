.class Lcom/dolphin/browser/androidwebkit/QuotaUpdaterWrapper;
.super Ljava/lang/Object;
.source "QuotaUpdaterWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebStorage$QuotaUpdater;


# instance fields
.field private final mQuotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;


# direct methods
.method public constructor <init>(Landroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/QuotaUpdaterWrapper;->mQuotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/QuotaUpdaterWrapper;->mQuotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/QuotaUpdaterWrapper;->mQuotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public updateQuota(J)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/QuotaUpdaterWrapper;->mQuotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 42
    return-void
.end method
