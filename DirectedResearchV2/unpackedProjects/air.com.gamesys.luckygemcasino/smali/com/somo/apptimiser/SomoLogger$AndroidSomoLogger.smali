.class Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;
.super Lcom/somo/apptimiser/SomoLogger;
.source "SomoLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidSomoLogger"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/somo/apptimiser/SomoLogger;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method d(Ljava/lang/String;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method varargs d(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method e(Ljava/lang/String;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method varargs e(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method i(Ljava/lang/String;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method varargs i(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method v(Ljava/lang/String;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method varargs v(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method w(Ljava/lang/String;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method varargs w(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLogger$AndroidSomoLogger;->tag:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
