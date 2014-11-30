.class public Lcom/facebook/orca/app/OrcaApplication;
.super Landroid/app/Application;
.source "OrcaApplication.java"


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    formKey = ""
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/orca/app/OrcaApplication;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 34
    const-string v0, "orca:OrcaApplication"

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaApplication;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/OrcaApplication;)Lcom/facebook/orca/app/OrcaInjector;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaApplication;->b:Lcom/facebook/orca/app/OrcaInjector;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 132
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 133
    const-string v0, "https://www.facebook.com/mobile/orca_android_crash_logs/"

    .line 134
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v1

    new-instance v2, Lorg/acra/sender/HttpPostSender;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/acra/sender/HttpPostSender;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    .line 135
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/OrcaInjector;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaApplication;->b:Lcom/facebook/orca/app/OrcaInjector;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 50
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(I)V

    .line 51
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaApplication;->b()V

    .line 53
    new-instance v0, Lcom/facebook/orca/app/OrcaInjector;

    new-instance v1, Lcom/facebook/orca/app/ContextScope;

    invoke-direct {v1}, Lcom/facebook/orca/app/ContextScope;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/app/OrcaInjector;-><init>(Lcom/facebook/orca/app/OrcaApplication;Lcom/facebook/orca/app/ContextScope;)V

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaApplication;->b:Lcom/facebook/orca/app/OrcaInjector;

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaApplication;->b:Lcom/facebook/orca/app/OrcaInjector;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaInjector;->a()V

    .line 59
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v1

    .line 60
    const-string v2, "app"

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaApplication;->b:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaApplication;->b:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/debug/OrcaLogImpl;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/OrcaLogImpl;

    .line 67
    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/OrcaLog;)V

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/debug/OrcaLogImpl;->a(Z)V

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaApplication;->b:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/OrcaDataManager;->a(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaApplication;->b:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    .line 73
    const-string v1, "orca:OrcaApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OrcaAppType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v1, Lcom/facebook/orca/app/OrcaApplication$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/OrcaApplication$1;-><init>(Lcom/facebook/orca/app/OrcaApplication;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/server/OrcaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/OrcaApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    const-class v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 119
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 124
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaApplication;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageCache;->a()V

    .line 125
    return-void
.end method
