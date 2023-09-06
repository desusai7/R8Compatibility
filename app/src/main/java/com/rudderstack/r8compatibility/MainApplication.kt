package com.rudderstack.r8compatibility

import android.app.Application
import com.rudderstack.android.sdk.core.RudderClient
import com.rudderstack.android.sdk.core.RudderConfig
import com.rudderstack.android.sdk.core.RudderLogger

class MainApplication: Application() {

    override fun onCreate() {
        super.onCreate();
        val rudderClient =
            RudderClient.getInstance(
                this,
                "1n0JdVPZTRUIkLXYccrWzZwdGSx",
                RudderConfig.Builder()
                    .withLogLevel(RudderLogger.RudderLogLevel.VERBOSE)
//                    .withDbEncryption(RudderConfig.DBEncryption(true, "desu"))
                    .withDataPlaneUrl("https://rudderstachvf.dataplane.rudderstack.com")
                    .withTrackLifecycleEvents(true)
                    .withRecordScreenViews(true)
                    .build()
            )

    }
}