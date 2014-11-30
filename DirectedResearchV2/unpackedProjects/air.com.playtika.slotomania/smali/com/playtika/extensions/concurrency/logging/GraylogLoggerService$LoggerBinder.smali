.class public Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;
.super Landroid/os/Binder;
.source "GraylogLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoggerBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;


# direct methods
.method public constructor <init>(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    return-object v0
.end method
